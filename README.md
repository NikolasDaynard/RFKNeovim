# RFKNeovim
RobotFindsKitten ported to Neovim
You enable it with :RFK
You can disable it with :RFK
It only uses characters in the current buffer, so you have to reload when changing buffers to ensure a kitten exists

```vim

Plug 'NikolasDaynard/RFKNeovim', { 'branch': 'main' }
lua <<EOF
require'RFKNeovim'.setup{
  customCharacterset = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_!`~@#$%^&*()-=+*/[]{}\\|;:\'\",.<>?-',
}
EOF
```


