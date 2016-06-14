# Write your code here!

class Hospital
	def initialize(name, location)
		@name = name
		@location = location
		@patient_records = Hash.new
		@staff_records = Hash.new
	end
	def add_patient(patient)
		@record_number = @patient_records.size + 1
		@ind_record = Hash.new
		@patient_records[@record_number] = @ind_record
		@ind_record["record_number"] = @record_number
		@ind_record["full_name"] = patient.instance_variable_get(:@full_name)
		@ind_record["age"] = patient.instance_variable_get(:@age)
		@ind_record["status"] = patient.instance_variable_get(:@status)
		@ind_record["treatment"] = patient.instance_variable_get(:@treatment)
	end
	def patient_record(record_number, key)
		if key == "all"
			p @patient_records[record_number]
		else p @patient_records[record_number][key]
		end
	end
	def add_staff(staff)
		@record_number = @staff_records.size + 1
		@ind_record = Hash.new
		@staff_records[@record_number] = @ind_record
		@ind_record["record_number"] = @record_number
		@ind_record["full_name"] = staff.instance_variable_get(:@full_name)
		@ind_record["age"] = staff.instance_variable_get(:@age)
		@ind_record["status"] = staff.instance_variable_get(:@status)
		@ind_record["job"] = staff.instance_variable_get(:@job)
	end
	def staff_record(record_number, key)
		if key == "all"
			p @staff_records[record_number]
		else p @staff_records[record_number][key]
		end
	end
end

class Patient
	def initialize(full_name, age, status, treatment)
		@full_name = full_name
		@age = age
		@status = status
		@treatment = treatment
	end
end

class Staff
	def initialize(full_name, age, status, job)
		@full_name = full_name
		@age = age
		@status = status
		@job = job
	end
end

hospital = Hospital.new("hos", "Msia")
patient = Patient.new("Eliza Cinder", 13, "healthy", nil)
hospital.add_patient(patient)
hospital.patient_record(1, "all")
staff = Staff.new("Camila Bay Regan", 34, "healthy", "doctor")
hospital.add_staff(staff)
hospital.staff_record(1, "all")