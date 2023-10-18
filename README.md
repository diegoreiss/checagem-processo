# checagem-processo

Recomendado deixar a pasta do repositorio na $HOME

E colocar essa function no ~/.bashrc ou ~/.profile
```bash
function roda_processo() {
    $@ & echo $! > $HOME/checagem_processo/pid.txt
}
```

Assim todo comando que deseja verificar o processo basta executar:

```bash
roda_processo <seu comando aqui>
```
O PID gerado vai ser redirecionado ao arquivo ``pid.txt``
e para checar o processo basta executar:

```bash
bash check_progress.sh
```
Se desejar executar o script automaticamente, basta configurar uma schedule com ``crontab`` ou derivados

O script vai informar o status do processo e enviar para o arquivo ``status.txt``
O status pode gerar 3 respostas:

``DOWN`` -> Nenhum processo sendo verificado

``RUNNING`` -> O processo está rodando

``FINISHED`` -> O processo foi concluído ou terminado
