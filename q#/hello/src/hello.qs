/// Hello World in Q# !

namespace Hello {

  open Microsoft.Quantum.Canon;
  open Microsoft.Quantum.Intrinsic;

  @EntryPoint()
  operation Main() : Unit {
    Message("Hello World from Q# !");
  }
}
