
    import chisel3._
    import chiselsby.Check
    object gensystem extends App {
        Check.generateRTL(() => new system(args(0).toInt,args(1).toInt))
    } 
    