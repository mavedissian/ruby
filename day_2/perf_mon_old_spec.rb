require './perf_mon.rb'

describe "Performance Monitor" do
 include PerformanceMonitor

   it "should run code" do
    flag = false
    run_code do
     flag = true
    end
    flag.should be_true
   end

   it "should report how long it takes" do
    time = run_code do
     sleep(2)
     "Hello World!"
    end.should be_within(0.1).of(2.0)
    puts time
   end
end
