def estado_luz(status):
     match status:
        case "luz ligada":
            return "on"
        case "luz apagada":
            return "off"
        case "luz piscando":
            return "blink"
        case _:
            return "Estado desconhecido"

print(estado_luz("luz apagada"))
