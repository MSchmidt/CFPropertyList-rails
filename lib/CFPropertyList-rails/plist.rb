require 'cfpropertylist'

# Monkey Patching support for Date and DateTime objects in CFPropertyList
# TODO: Remove as soon as pull request 10 is accepted:
# https://github.com/ckruse/CFPropertyList/pull/10
module CFPropertyList
  class CFDate < CFType
    def initialize(value = nil,format=CFDate::TIMESTAMP_UNIX)
      if(value.is_a?(Time) || value.nil?) then
        @value = value.nil? ? Time.now : value
      elsif value.instance_of? Date
        @value = Time.utc(value.year, value.month, value.day, 0, 0, 0)
      elsif value.instance_of? DateTime
        @value = value.to_time.utc
      else
        set_value(value,format)
      end
    end
  end
end
