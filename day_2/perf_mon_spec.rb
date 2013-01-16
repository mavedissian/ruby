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
    Time.stub(:now).and_return(0,10)
    time = run_code do
     "Hello World!"
    end
    time.should be_within(0.1).of(10.0)
    puts time
   end
end
