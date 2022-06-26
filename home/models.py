from django.db import models

# Create your models here.

class Department(models.Model):
    department_id = models.IntegerField()
    department_code = models.CharField(max_length=100)
    department_name = models.CharField(max_length=100)




class Faculty(models.Model):
    faculty_id = models.IntegerField()
    faculty_name = models.CharField(max_length=100)
    faculty_type = models.CharField(max_length=100)
    department_id = models.CharField(max_length=20)

class Materials(models.Model):
    material_name = models.CharField(max_length=3000)
    material_sem = models.IntegerField()
    material_batch = models.CharField(max_length=20)
    material_subject = models.CharField(max_length=20)
    material_type = models.CharField(max_length=20)




class Student(models.Model):
    student_id = models.IntegerField()
    student_regno = models.CharField(max_length=30)
    student_address = models.CharField(max_length=100)
    faculty_type = models.CharField(max_length=100)
    department_id = models.CharField(max_length=20)



