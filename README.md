# Selection
A suite of functions designed for AI systems and traffic analyses, and analyses vulnerabilities specific to my own systems.

## Special Thanks
Before we begin I'd like to thank Igrigorik and Red Davis for introducing me to decision trees and naive bayes. This was infinitely helpful when I was starting out.

## Version
Ruby 3.2.3 or higher

## Install
This will default to Gemfiles.

## Usage
### Normal Usage

This is the normal AI process that analyses three basic facts.
~~~ruby
require "Selection"

2.times do
  get_statistics(:cats,                 "are the cleanest pets.",
                 :dogs,                  "are mans best friend.",
                 :gerbils, "do arobics different from hamsters.")

  reasses
  reasses
  reasses
  reasses
end
~~~

### Analytics
~~~ruby
evaluate_malicious_users(0.70, 0.30, 0.16, 26)
evaluate_github_visitors(2, 15, 0.16)

evaluate_yt_stats(:first_channel,  166,
                  :second_channel,  87,
                  :third_channel,   17,
                  
                  0.54)
                  
difference_in_traffic(70, 166)
~~~

### Use In Tandem
~~~ruby
def reasses_users(a, b, c, d)
  evaluate_malicious_users(a, b, c, d)

  get_statistics(:legitimate_users,    "is about #{1 - @malicious_humans} percent",
                  :malicious_users, "is about #{@malicious_humans  * 100} percent",
                  :malicious_bots,   "is about #{@malicious_bots   * 100} percent")
                
  4.times do reasses end
end

def reconsider_users(a, b, c, d)
  evaluate_malicious_users(a, b, c, d)

  get_statistics(:legitimate_users,    "is about #{1 - @malicious_humans} percent",
                  :malicious_users, "is about #{@malicious_humans  * 100} percent",
                  :malicious_bots,   "is about #{@malicious_bots   * 100} percent")
                
  4.times do reconsider end
end
~~~

### Get Larger Control Group
~~~ruby
4.times do
  get_larger_control_group(:black,      "is the darkest shade that exists. Most are not quite total absence of light.",
                           :white,                "is the brightest shade that exists. Most are not quite this bright",
                           :red,                     "Is the warmest color that exists, with apples being this color.",
                           :green,   "Is the least warm and least cold color that exists, and yet the tartest apples.",
                           :blue,    "Is the color of light reflected into the ocean, and the color of stained glass.",
                           :cyan,                              "cyan is in the CYMK color spectrum used for printing.",
                           :yellow,                             "yellow is the CYMK color spectrum used for printing.",
                           :magenta,                           "magenta is the CYMK color spectrum used for printing.")

  reasses_larger_control_group
  reasses_larger_control_group
  reasses_larger_control_group
  reasses_larger_control_group
  
  reasses_larger_control_group
  reasses_larger_control_group
  reasses_larger_control_group
  reasses_larger_control_group
  
  reasses_larger_control_group
  reasses_larger_control_group
  reasses_larger_control_group
  reasses_larger_control_group
end

gets.chomp
~~~

## Work In Progress
~~~
analyze_traffic
evaluate_each_site
~~~

## Example Output
Coming Soon
