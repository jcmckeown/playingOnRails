class UserkeysController < ApplicationController
  def fetch
    byebug
    # we could agree elsewhere to send the request in the form of a Form... yes, let's do that
    theParams = params.permit(:quem,:claim)
    theName = theParams[:quem]
    whichUser = User.find_by(display: theName) # just hope we've been careful to uniquify display names...
    @addressee = whichUser.id.to_s 
    @addressee << ":" << whichUser.login
    pkm = whichUser.pubkey_mod
    pke = whichUser.pubkey_exp
    @pub_key = ""
    @pub_key << (if pkm then pkm.to_s(16) else "unset" end) << "::" << (if pke then pke.to_s(16) else "unset" end)
    if theParams[:claim]
      hk = whichUser.hidnprivkey
      if hk then @hidn_key = hk.to_s(16) else @hidn_key = "unset" end
    end
  end
end
