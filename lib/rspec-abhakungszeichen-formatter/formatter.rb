require "rspec/core/formatters/base_text_formatter"

class RspecAbhakungszeichenFormatter < RSpec::Core::Formatters::BaseTextFormatter
  def initialize(output)
    super(output)

    @level = 0
  end

  def example_passed(proxy)
    puts color("#{pad} \u2713 #{proxy.description}", :green)
  end

  def example_pending(proxy)
    puts color("#{pad} \u2729 #{proxy.description}", :yellow)
  end

  def example_failed(proxy)
    puts color("#{pad} \u2717 #{proxy.description}: #{proxy.exception}", :red)
  end

  def example_group_started(example_group)
    puts "#{pad} #{example_group.description}:"
    @level += 1
  end

  def example_group_finished(example_group)
    @level -= 1
  end

  def pad
    ' ' * @level * 2
  end
end
