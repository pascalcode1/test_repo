import json

from external_notifservice import ExternalNotifService

with open('settings.json', "rb") as PFile:
    password_data = json.loads(PFile.read().decode('utf-8'))

ov_url = password_data["oneVizionUrl"]
ov_login = password_data["oneVizionLogin"]
ov_pwd = password_data["oneVizionPwd"]
service_id = password_data["serviceId"]
max_attempts = password_data["maxAttempts"]
next_attempt_delay = password_data["nextAttemptDelay"]

with open('ihub_process_id', "rb") as PFile:
    process_id = PFile.read().decode('utf-8')

notification_service = ExternalNotifService(service_id, process_id, ov_url, ov_login, ov_pwd,
                                            max_attempts, next_attempt_delay)
notification_service.start()
