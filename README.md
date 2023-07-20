# PESIC - PetroElektroSbyt Integrated Client

## Установка

```bash
$ pip3 install -U pesic
```

## Использование

```python
from pesic.wrapper import PESClient

username = "88005553535"
password = "ЧемУкогоТоЗанимать"

api = PESClient(username=username, password=password)

api.get_groups()
api.get_accounts()
api.update_meter_counters([[8760, "DAY"], [2730, "NIGHT"]])
```

## Отладка

```bash
export PESIC_LOGLEVEL="debug"
```

## Предостережение

Личный кабинет ПетроЭлектроСбыт поддерживает несколько типов учетных записей. Как классические, для передачи показаний потребления электроэнергии, так и учетные записи поставщиков холодной и горячей воды и, возможно, какие-то еще.

Метод update_meter_counters API Wrapper в данный поддеживает только обновление двухтарифных счетчиков электроэнергии и только для первой учетной записи:

```python
pesik.get_accounts()[0]
```
