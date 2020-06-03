james_bond = {:first_name => "james", :midlle_name => "agent", :last_name => "bond"}
james_bond.each_key {|k| puts k}
james_bond.each_key {|k| puts james_bond[k]}