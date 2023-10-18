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

Se desejar executar automaticamente, basta configurar uma schedule com ``crontab`` ou derivados
