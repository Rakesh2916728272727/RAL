
class base_seq extends uvm_sequence#(apb_seq_item);
  `uvm_object_utils(base_seq)
 module_reg  model;
 apb_seq_item tx;
  function new(string name ="base_seq");
 super.new(name);
 endfunction
  virtual task body;
   
  endtask
endclass


//----------------------------------------------------------------
class apb_seq extends base_seq;
  `uvm_object_utils(apb_seq)
  bit[31:0] read_data;
uvm_status_e status;
  function new(string name ="apb_seq");
 super.new(name);
 endfunction

virtual task body();
 
//       if(!uvm_config_db#(module_reg) :: get(uvm_root::get(), "", "model", model))
//        `uvm_fatal(get_type_name(), "reg_model is not set at top level");
//   `uvm_info("SEQ",$sformatf(" WRITE F BY READ" ),UVM_LOW);
//   //*****************************************************************************************************   
  model.ctrl_register_inst.write(status,5);
 // model.ctrl_register_inst.update(status);
  `uvm_info("[SEQ]:", $sformatf("write ctrl_register -> Desired Value: %0h & Mirrored Value: %0h ", model.ctrl_register_inst.get(), model.ctrl_register_inst.get_mirrored_value()),UVM_LOW);
  
  model.ctrl_register_inst.read(status,read_data);
     
  `uvm_info("[SEQ]:", $sformatf("Readctrl_register -> Desired Value: %0h & Mirrored Value: %0h & Data Read: %0h", model.ctrl_register_inst.get(), model.ctrl_register_inst.get_mirrored_value(),read_data),UVM_LOW);
 //-----------------------------------------------   
  
  model.reg1_register_inst.write(status,'h10);

  `uvm_info("[SEQ]:", $sformatf("write reg1_register -> Desired Value: %0h & Mirrored Value: %0h ", model.reg1_register_inst.get(), model.reg1_register_inst.get_mirrored_value()),UVM_LOW);
  
model.reg1_register_inst.read(status,read_data);

  `uvm_info("[SEQ]:", $sformatf("Read reg1_register -> Desired Value: %0h & Mirrored Value: %0h & Data Read: %0h", model.reg1_register_inst.get(), model.reg1_register_inst.get_mirrored_value(),read_data),UVM_LOW);
//-----------------------------------        
  model.reg2_register_inst.write(status,'h15);

  `uvm_info("[SEQ]:", $sformatf("write reg2_register -> Desired Value: %0h & Mirrored Value: %0h ", model.reg2_register_inst.get(), model.reg2_register_inst.get_mirrored_value()),UVM_LOW);
  
model.reg2_register_inst.read(status,read_data);

  `uvm_info("[SEQ]:", $sformatf("Read reg2_register -> Desired Value: %0h & Mirrored Value: %0h & Data Read: %0h", model.reg2_register_inst.get(), model.reg2_register_inst.get_mirrored_value(),read_data),UVM_LOW);
        
//-----------------------------------        
  model.reg3_register_inst.write(status,'h20);

  `uvm_info("[SEQ]:", $sformatf("write reg3_register -> Desired Value: %0h & Mirrored Value: %0h ", model.reg3_register_inst.get(), model.reg3_register_inst.get_mirrored_value()),UVM_LOW);
  
model.reg3_register_inst.read(status,read_data);

  `uvm_info("[SEQ]:", $sformatf("Read reg3_register -> Desired Value: %0h & Mirrored Value: %0h & Data Read: %0h", model.reg3_register_inst.get(), model.reg3_register_inst.get_mirrored_value(),read_data),UVM_LOW);
//-----------------------------------        
  model.reg4_register_inst.write(status,'h25);

  `uvm_info("[SEQ]:", $sformatf("write reg1_register -> Desired Value: %0h & Mirrored Value: %0h ", model.reg4_register_inst.get(), model.reg4_register_inst.get_mirrored_value()),UVM_LOW);
  
model.reg4_register_inst.read(status,read_data);

  `uvm_info("[SEQ]:", $sformatf("Read reg4_register -> Desired Value: %0h & Mirrored Value: %0h & Data Read: %0h", model.reg4_register_inst.get(), model.reg4_register_inst.get_mirrored_value(),read_data),UVM_LOW);
                   
//------------------------------------------------*/
 endtask

endclass