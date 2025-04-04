
class apb_test extends uvm_test;
  `uvm_component_utils(apb_test)
  
  function new(string name="",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  apb_env env;
  apb_seq seq_inst;
 
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = apb_env::type_id::create("env",this);
    seq_inst = apb_seq::type_id::create("seq1");
  
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info("TEST",sprint(),UVM_LOW)
  endfunction
  
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
     seq_inst.model = env.model;
    seq_inst.start(env.agent.sqr);
    
    #100
    phase.drop_objection(this);
  endtask
endclass
  
  
    