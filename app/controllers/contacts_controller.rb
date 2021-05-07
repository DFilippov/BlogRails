class ContactsController < ApplicationController

	def new
	end

	def create
		# @contact = Contact.new(params[:contact])	заменили на contact_params
		@contact = Contact.new(contact_params)
		# if @contact.save
		#	или можно так:
			if @contact.valid?
				@contact.save
		else
			# если не сохранил, то показать экшн /contacts/new
			# (данный экшн отработает,
			# но при этом в строке url будет /contacts , тк отработал метод POST - create ,
			# который /contacts )
			render action: 'new'
		end
	end


	def put
		@contact = Contact.find(:select => :id )

	end


	# делаем защиту атрибутом private - чтобы метод был доступен только внутри этого класса контроллера
	private

	# по дефолту Rails запрещает обращаться к параметрам (например contact[email], contact[message])
	# из соображений безопасности
	# поэтому необходимо разрешить доступ к ним
	def contact_params
		params.require(:contacts).permit(:email, :message)
	end

end
