from faker import Faker
fake = Faker()


def factory_new_user():
    user = {
        'first_name': fake.first_name(),
        'last_name': fake.last_name(),
        'email': fake.free_email(),
        'password': "123456"
    }
    return user

def factory_invalid_email():
    user = {
        'first_name': 'Test',
        'last_name': 'Automation',
        'email': 'teste_automation.com',
        'password': "123456"
    }
    return user

def factory_obligated_fields():
    user = {
        'first_name': '',
        'last_name': '',
        'email': '',
        'password': ''
    }
    return user
