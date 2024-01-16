import re

def analisar_expressao(expressao):
    # Remove espaços em branco
    expressao = expressao.replace(" ", "")

    # Encontra expressões entre parênteses mais internos
    while "(" in expressao:
        expressao = re.sub(r'\(([^()]*)\)', lambda match: str(analisar_expressao(match.group(1))), expressao)

    # Encontra multiplicação e divisão
    padrao_mult_div = re.compile(r'(\d+\.?\d*)[*/](\d+\.?\d*)')
    while re.search(padrao_mult_div, expressao):
        expressao = re.sub(padrao_mult_div, lambda match: executar_operacao(match.group(0)), expressao, count=1)

    # Encontra soma e subtração
    padrao_soma_sub = re.compile(r'(\d+\.?\d*)[+\-](\d+\.?\d*)')
    while re.search(padrao_soma_sub, expressao):
        expressao = re.sub(padrao_soma_sub, lambda match: executar_operacao(match.group(0)), expressao, count=1)

    return expressao

def executar_operacao(match):
    if match==None:
        return ""
    
    
    operando1,operacao, operando2 = re.match(r'([0-9]{1,}\.[0-9]{1,})([+\-*\/])([0-9]{1,}\.[0-9]{1,})', match).groups()
    operando1, operando2 = float(operando1), float(operando2)

    if operacao == '+':
        return f'add {operando1},{operando2}\n'
    elif operacao == '-':
        return f'sub {operando1},{operando2}\n'
    elif operacao == '*':
        return f'mul {operando1},{operando2}\n'
    elif operacao == '/':
        return f'div {operando1},{operando2}\n'

if __name__ == "__main__":
    expressao_input = input("math exp: ").strip()
    resultado = analisar_expressao(expressao_input)
    
    print(f"math: \n{resultado}")

