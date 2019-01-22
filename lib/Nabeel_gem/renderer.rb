module NabeelCopyRight
    class Renderer
      def self.copyright name, msg
        "&copy;  #{name} | <b>#{name} </b> #{msg}".html_safe
      end
    end
  end