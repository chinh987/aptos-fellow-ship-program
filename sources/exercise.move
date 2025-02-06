module MyAddr::example{
  use aptos_std::debug;
  use std::signer;

  fun adding(a:u64, b:u8):u64{
    a+(b as u64)
  }

  #[test(account = @0x1)]
  public entry fun addex(){
    let c:u64 = adding(500,6);
    debug::print<u64>(&c);
    }

  #[test(account = @0x1)]
  public entry fun debugex(account:signer){
    let a:u8 = 23;
    let addr = signer::address_of(&account);
    debug::print<address>(&addr);
    debug::print<u8>(&a);
    }

    public fun whilen(n: u8):u8{
      let i:u8=1;
      let sum:u8=0;
      while(i<=n){

      sum = sum + i;
      i = i+1;
      };
      sum
      }

 #[test(account = @0x1)]
  public entry fun whileex(){
    let c:u8 = whilen(6);
    debug::print<u8>(&c);
    }
}