module MyAddr::Fellow{
  use std::debug;
  struct Fellow has drop{
    id:u64,
    age:u8,
    build_in_bear:bool
    }

    public fun newFellow(id: u64, age:u8, bib: bool):Fellow{
      return Fellow{id,age,build_in_bear:bib}
    }

    public fun get_id(f: Fellow): u64{
      return f.id
      }

    #[test(account = @0x1)]
    public entry fun script_fn(){
      let f = MyAddr::Fellow::newFellow(5000,23,false);
      //let id = f.id;
      let id = MyAddr::Fellow::get_id(f);
      debug::print(&id);
      }

    struct MyClass<t1,t2> has drop{
      quality:t1,
      learning:t2
    }

    public fun newClass<t1,t2>(quality:t1, learning:t2):MyClass<t1,t2>{
      return MyClass{quality, learning}
    }

    #[test(account = @0x1)]
    public entry fun script_class(){
      let quality:u64 = 78;
      let learning:u64 = 87;
      let f = MyAddr::Fellow::newClass(quality, learning);
      //let q = f.quality;
      debug::print(&f);
      }
}