import kopf
from datetime import datetime
import kubernetes

@kopf.timer('ephemeralnamespaces', interval=10.0)
def check_expiration_time(name, spec, **kwargs):
    try:
        expiration_dt = datetime.fromisoformat(spec['expiresAt'])
    except KeyError:
        return

    now = datetime.now()
    if expiration_dt < now:
        #FIXME: This should delete the ephemeralnamespace instead
        kubernetes.client.CoreV1Api().delete_namespace(name)
