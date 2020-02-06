from random import random

from notifservice import NotificationService


class ExternalNotifService(NotificationService):

    def send_notification(self, notif_queue_record):
        if random() > 0.5:
            print(notif_queue_record.msg)
        else:
            raise Exception("Error Test")

