function motor_flick()
global mA;
global mB;
global mC;
global mA_GR;
global mB_GR;
global mC_GR;
global mA_pos;
global mB_pos;
global mC_pos;
global mP;
global mP_drop;
global mP_max;
mP = mP_drop;
current_pos = fkine_simpl(mA_pos, mB_pos, mC_pos)
desired_pos = [current_pos(1); current_pos(2); current_pos(3)-35; 1];
motor_to(desired_pos(1), desired_pos(2), desired_pos(3));
mA.WaitFor();
mB.WaitFor();
mC.WaitFor();
% motor_to(current_pos(1), current_pos(2), 0);
% mA.WaitFor();
% mB.WaitFor();
% mC.WaitFor();
mA_pos = mA.ReadFromNXT.Position / -mA_GR;
mB_pos = mB.ReadFromNXT.Position / -mB_GR;
mC_pos = mC.ReadFromNXT.Position / mC_GR;
mP = mP_max;