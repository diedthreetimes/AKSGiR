class Guess

  def initialize(keystore_name, pw)
    @ks = keystore_name
    @pw = pw

    raise "Keystore or pw is nil" if @ks.nil? || @pw.nil?
  end

  def run

    mods = [""] # Add modifiers here

    status = false
    mods.each { |mod|
      `keytool -list -keystore #{@ks} -storepass #{@pw+mod}`
      if($? == 0 && !status)
        puts mod
      end
      status = ($? == 0) || status
    }

    status
  end
end
