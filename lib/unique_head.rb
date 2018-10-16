# Unique header generation
require 'middleman-core/renderers/redcarpet'
require 'digest'

class UniqueHeadCounter < Middleman::Renderers::MiddlemanRedcarpetHTML
  def initialize
    super
    @head_count = {}
  end

  def header(text, header_level)
    friendly_text = text.gsub(/<[^>]*>/,"").parameterize
    if friendly_text.strip.length == 0
      # Looks like parameterize removed the whole thing! It removes many unicode
      # characters like Chinese and Russian. To get a unique URL, let's just
      # URI escape the whole header
      friendly_text = Digest::SHA1.hexdigest(text)[0,10]
    end
    @head_count[friendly_text] ||= 0
    @head_count[friendly_text] += 1
    if @head_count[friendly_text] > 1
      friendly_text += "-#{@head_count[friendly_text]}"
    end
    return "<h#{header_level} id='#{friendly_text}'>#{text}</h#{header_level}>"
  end

  def preprocess(full_document)
    full_document = super(full_document) if defined?(super)
    full_document = ERB.new(full_document).result(binding)
    return full_document
  end

  def list_object(obj)
    {
      object: 'list',
      data: [
        obj
      ]
    }
  end

  def sample_account_hash
    {
      object: 'account',
      id: 'acct_ksdfj3409DKf93jhdk',
      business: 'bus_klsjdfDKFJsdkf2345',
      created_at: 1536232308,
      updated_at: 1536232308
    }.stringify_keys
  end

  def sample_bank_hash
    {
      object: 'bank',
      id: 'bank_2983y47sdfj8348d',
      name: 'Sample Bank',
      created_at: 1473847543,
      updated_at: 1473847543
    }.stringify_keys
  end

  def sample_check_hash
    {
      object: 'check',
      id: 'chk_83ASDfhje83jdncle1284',
      amount: 19900,
      number: 10012,
      account: 'acct_ksdfj3409DKf93jhdk',
      deposit: 'dep_s8dFJsd83jdj939384',
      scan_url: 'https://files.checklockbox.com/asdflasdflkjasdflkjasfd/scan.png',
      created_at: 1536231667,
      updated_at: 1536231667
    }.stringify_keys
  end

  def sample_credentials_hash
    {
      object: 'credentials',
      data: {
        object: 'account',
        id: 'acct_ksdfj3409DKf93jhdk',
        secret_key: 'sk_1234567890'
      }
    }.stringify_keys
  end

  def sample_deposit_hash
    {
      object: 'deposit',
      id: 'dep_s8dFJsd83jdj939384',
      amount: 197610,
      account: 'acct_ksdfj3409DKf93jhdk',
      created_at: 1536801667,
      updated_at: 1536801667
    }.stringify_keys
  end

  def sample_mailbox_hash
    {
      object: 'mailbox',
      id: 'mlbox_djkdf983jsls8xn',
      account: 'acct_ksdfj3409DKf93jhdk',
      line1: '2261 Market Street',
      line2: 'Suite 20000',
      city: 'San Francisco',
      state: 'California',
      zip: '94114',
      suite_number: '20000',
      created_at: 1536801667,
      updated_at: 1536801667
    }.stringify_keys
  end

  def sample_status_hash
    {
      object: 'status',
      code: 'incomplete',
      message: 'Missing bank account number',
      attribute: 'bank_account.account_number',
      data: sample_account_hash
    }.stringify_keys
  end
end
