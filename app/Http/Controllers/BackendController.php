<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\ProductType;
use App\User;
use App\Slide;
use App\Bills;
use App\BillDetail;
use Hash;
class BackendController extends Controller
{
    // Product
    public function showProduct()
    {
        $products = Product::paginate(10);  
        $productType = ProductType::all();      
        return view('product.show', compact('products','productType'));
        
    }

    public function createProduct()
    {       
        $productType = ProductType::all();
        return view('product.create', compact('productType'));
    }

    public function postProduct(request $request)
    {
        $request->validate(
            [
                'name'=>'required|max:120|min:10',
                'unit_price'=>'required|integer',
                'promotion_price'=>'required|integer',
                'new'=>'required|integer',
                'id_type'=>'required'                
            ],
            [
                'name.required'=>'Tên sản phẩm không được để trống',
                'name.max'=>'Tối đa 120 ký tự',
                'name.min'=>'Tối thiểu 10 ký tự',
                'unit_price.required'=>'Đơn giá không được để trống',
                'unit_price.integer'=>'Giá sản phẩm phải là kiểu số',
                'promotion_price.required'=>'Giá khuyến mãi không được để trống',
                'promotion_price.integer'=>'Giá sản phẩm phải là kiểu số',
                'new.required'=>'sản phẩm mới không được để trống',
                'new.required'=>'sản phẩm mới phải là kiểu số',
                'id_type.required'=>'loại sản phẩm không được để trống'                
        ]);
        $product = new Product;
        $product->name = $request->name;
        $product->id_type= $request->id_type;
        $product->unit_price = $request->unit_price;
        $product->promotion_price = $request->promotion_price;
        if($request->hasFile('image'))
        {
            $file = $request->file('image');
            $newNameFlie = date('Y-m-d-H-i-m').'-'.$file->getClientOriginalName();
            $file->move('source/image/product', $newNameFlie);
            $product->image = $newNameFlie;
        }        
        $product->new = $request->new;
        $product->save();
        return redirect()->back()->with('success', 'Thêm mới thành công');
    }

    public function editProduct($id)
    {
        $product = Product::find($id);
        $productType = ProductType::all();
        return view('product.edit', compact('product', 'productType'));
    }

    public function updateProduct(request $request, $id)
    {        
        $request->validate(
            [
                'name'=>'required|max:120|min:10',
                'unit_price'=>'required|integer',
                'promotion_price'=>'required|integer',
                'new'=>'required|integer',
                'id_type'=>'required'                
            ],
            [
                'name.required'=>'Tên sản phẩm không được để trống',
                'name.max'=>'Tối đa 120 ký tự',
                'name.min'=>'Tối thiểu 10 ký tự',
                'unit_price.required'=>'Đơn giá không được để trống',
                'unit_price.integer'=>'Giá sản phẩm phải là kiểu số',
                'promotion_price.required'=>'Giá khuyến mãi không được để trống',
                'promotion_price.integer'=>'Giá sản phẩm phải là kiểu số',
                'new.required'=>'sản phẩm mới không được để trống',
                'new.required'=>'sản phẩm mới phải là kiểu số',
                'id_type.required'=>'loại sản phẩm không được để trống'               
        ]);
        $product = Product::find($id);
        $product->name = $request->name;
        $product->id_type= $request->id_type;
        $product->unit_price = $request->unit_price;
        $product->promotion_price = $request->promotion_price;
        if($request->hasFile('image'))
        {
            $file = $request->file('image');
            $newNameFlie = date('Y-m-d-H-i-m'). '-'.$file->getClientOriginalName();
            $file->move('source/image/product', $newNameFlie);
            $request->image = $newNameFlie;
        }
        $product->image = $request->image;
        $product->new = $request->new;
        $product->save();
         return redirect()->back()->with('success', 'chỉnh sửa thành công');
    }

    public function deleteProduct($id)
    {
        $product = Product::find($id); 
        $product->delete();
        return redirect()->back()->with('success', 'Đã xóa 1 sản phẩm');
    }

    public function searchProduct()
    {
        $key = request('key');
        $products = Product::where('name', 'like', '%'.$key.'%')->paginate(10);
        $productType = ProductType::all();
        return view('product.show', compact('products', 'productType'));
    }

    public function filterByType()
    {
        $id_type = request('id_type') ;
        $typeFilter = ProductType::find($id_type);
        $products = Product::where('id_type', $typeFilter->id)->paginate(10);    
        $productType = ProductType::all();     
        return view('product.show', compact('products', 'productType', 'typeFilter'));

    }

    //category
    public function showCategory()
    {
        $productType = ProductType::all();        
        return view('category.show', compact('productType'));
    }

    public function createCategory()
    {
        return view('category.create');
    }

    public function postCategory(request $request)
    {
        $request->validate([
            'name'=>'required',            
        ],
        [
            'name.required'=>'Loại sản phẩm không được để trống',            
        ]);

        $productType = new ProductType;
        $productType->name = $request->name;
        $productType->description = $request->description;
        if($request->hasFile('image'))
        {
            $file = $request->file('image');
            $newNameFile = date('Y-m-d-H-i-m').'-'.$file->getClientOriginalName();
            $file->move('source/image/product', $newNameFile);
            $productType->image = $newNameFile;
        }       
         
        $productType->save();        
        return redirect()->back()->with('success', 'Đã thêm 1 một sản phẩm');
    }

    public function editCategory($id)
    {
        $productType = ProductType::find($id);        
        return view('category.edit', compact('productType'));
    }

    public function updateCategory(request $request, $id)
    {
        $request->validate([
            'name'=>'required',            
        ],
        [
            'name.required'=>'Loại sản phẩm không được để trống',            
        ]);
        $productType = ProductType::find($id);  
        $productType->name = $request->name;
        $productType->description = $request->description;
        if($request->hasFile('image'))
        {
            $file = $request->file('image');
            $newNameFile = date('Y-m-d-H-i-m').'-'.$file->getClientOriginalName();
            $file->move('source/image/product', $newNameFile);
            $productType->image = $newNameFile;
        }        
        $productType->save();
        return redirect()->back()->with('success', 'Đã chỉnh sửa thông tin');
    }

    public function deleteCategory($id)
    {
        $productType = ProductType::find($id);
        $productType->delete(); 
        return redirect()->back()->with('success', 'Đã xóa 1 sản phẩm');
    }

    //user
    public function showUser()
    {
        $users = User::all();
        return view('user.show', compact('users'));
    }

    public function createUser()
    {
        return view('user.create');
    }

    public function storeUser()
    {
        $user = new User;
        $user->name = request('fullname');
        $user->password = Hash::make(request('password')) ;
        $user->email = request('email');
        $user->save();
        return redirect()->back()->with('message', 'Đã thêm User');
    }

    public function editUser($id)
    {
        $user = User::find($id);
        return view('user.edit', compact('user'));
    }

    public function updateUser($id)
    {
        $user = User::find($id);
        $user->name = request('name');
        $user->email = request('email');
        $user->password = request('password');
        $user->phone = request('phone');
        $user->address = request('address');   
        $user->save();    
        return redirect()->back()->with('success', 'Đã chỉnh sửa thành công');
    }

    public function deleteUser($id)
    {
        $user = User::find($id);
        $user->delete();
        return redirect()->back()->with('success', 'Đã xóa thành công');
    }

    //slide
    public function showSlide()
    {
        $slide = Slide::all();
        return view('slide.show', compact('slide'));
    }

    public function createSlide()
    {
        return view('slide.create');
    }

    public function storeSlide(request $request)
    {
        request()->validate([
            'image'=>'required'
        ],
        [
            'image.required'=>'không được để trống'
        ]);
        $slide = new Slide;
        if($request->hasFile('image'))
        {
            $file = $request->file('image');
            $newFile = str_random(4).'-'.$file->getClientOriginalName();
            $file->move('source/image/slide', $newFile);
            $slide->image = $newFile;
        }
        $slide->save();
        return redirect()->back()->with('success', 'Đã thêm');        
    }

    public function editSlide($id)
    {
        $slide = Slide::find($id);
        return view('slide.edit', compact('slide'));
    }
    public function updateSlide(request $request, $id)
    {
        $request->validate([
            'image'=>'required'
        ],
        [
            'image.required'=>'không được để trống'
        ]);
        $slide = Slide::find($id);
        if($request->hasFile('image'))
        {
            $file = $request->file('image');
            $newFile = str_random(4).'-'.$file->getClientOriginalName();
            $file->move('source/image/slide', $newFile);
            $slide->image = $newFile;
        }
        $slide->save();
        return redirect()->back()->with('success', 'Đã chỉnh sửa');  
    }

    public function deleteSlide($id)
    {
        $slide = Slide::find($id);
        $slide->delete();  
        return redirect()->back()->with('success', 'Đã xóa');
    }

     // Thông tin đơn hàng
    public function showOrder()
    {
        $bills = Bills::all();
        return view('order.show', compact('bills'));
    }
    public function showDetail($id)
    {       
        $bill_id = Bills::where('id', $id)->first();          
        $billDetail = BillDetail::where('id_bill', $id)->get();       
        return view('order.detail', compact('billDetail', 'bill_id'));
    }
    // public function deleteOrder($id)
    // {
    //     $bill = Bills::find($id);
    //     $bill->delete();
    //     return redirect()->back()->with('success', 'Đã xóa');
    // }
}
