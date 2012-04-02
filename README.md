NSArray+FunctionalHelper
========================

After using frameworks like Linq, Underscore.js, and ActiveRecord, we got used to many of the methods those provide for collections. Rather than continue living without them, we wrote a few ourselves.

If you're using ARC, you'll need to turn it off for these files until they support ARC. Under the Target Settings -> Build Phases -> Compile Sources, find the NSArray+FunctionalHelper.m line and add the compiler flag `-fno-objc-arc`.