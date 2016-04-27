wsrun.pl -pipe -list simple_all.list proc_hier_pbench *.v > simple_all.result;
wsrun.pl -pipe -list complex_all.list proc_hier_pbench *.v > complex_all.result; 
wsrun.pl -pipe -list rand_simple.list proc_hier_pbench *.v > rand_simple.result;
wsrun.pl -pipe -list rand_complex.list proc_hier_pbench *.v > rand_complex.result;
wsrun.pl -pipe -list rand_control.list proc_hier_pbench *.v > rand_control.result;
wsrun.pl -pipe -list rand_mem.list proc_hier_pbench *.v > rand_mem.result;
wsrun.pl -pipe -list demo2_complex.list proc_hier_pbench *.v > demo2_complex.result;

