 describe command('getenforce') do
      its('exit_status') {should eq 0}
      its('stdout') { should eq "Enforcing\n" }
    end
