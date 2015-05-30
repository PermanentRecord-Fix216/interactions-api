module JSONApi
  class Errors

    def initialize(e)
      @errors = []
      gather_errors(e)
    end

    def gather_errors(e)
      @errors << self.public_send(e)
      { errors: @errors }
    end

    def not_found
      {
        status: 'Not Found',
        code: 404,
        detail: 'Record not found for corresponding id'
      }
    end

    def unprocessable
      {
        status: 'Unprocessable Entity',
        code: 422,
        detail: 'Record unable to be created, updated or deleted. Check your ??'
      }
    end
  end
end
