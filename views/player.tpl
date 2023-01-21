<!DOCTYPE html>

<html lang="en">
<head>
  <title>StreamPlayer</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <link rel="shortcut icon" href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpFNTdGOTA3OTczQTgxMUU0QTlEQUM0NEYyRkI1NEQxQiIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpFNTdGOTA3QTczQTgxMUU0QTlEQUM0NEYyRkI1NEQxQiI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOkU1N0Y5MDc3NzNBODExRTRBOURBQzQ0RjJGQjU0RDFCIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOkU1N0Y5MDc4NzNBODExRTRBOURBQzQ0RjJGQjU0RDFCIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+lsWdMwAAIvtJREFUeNrke3d81PX9//PzuX3JXXYu+7InmzCDQCDsISAbLFppa798URHroE4eddRW21rR/iy2Vm0drbL3hoBASMII2Xtfkkvucnv/Xu9PSAyKCv2p//w+eVxyufG59/s1nuP9/hzn8/nw//Mh9nq9cLvdP/oHO51OyGQyiMVisCTwPA+LxSL8z3HcjzIGkUgE8fnz57F27VqwQPyYh1arFT355JM/bygvnWOz2nxjpuZa3nr77UeOHzvWIWYDo0D80MfGjRshtlqtqKur+9ErYNXq1blqueytL/buhJIqoaO6EslRUZHdQ4e+WlBYeLq7u9vyQ49Br9ezyuOFUvi+Drlcjueee+7u4cOHZ3zb665evVrR0Nx8IiQwEH4+N9ztTdAVnpu6at7s/cOHDcsIDQnhf4wW+N4/ZNq0aaOWL1/+AeFKxLe9bv++fU1bnn1uqTIh9VRAWhbEmiho4hOxe89epKSkfHJg795ff5+J+UYQ/L5PaDabA1paWlQEbM7vem1DfX33vuMnVrzzzjuPV5VdF3l8nDfcZJpBuJRcVVdXcqef7efvjw8//OdPg4ODAjb8z/+8X1JSov/RA2AwGLwM1f1pMLdzXC4u1k0YP35zHxv7cN+aNa+HqVRJVEGqOyHoe3/ykwlZKUkvNl4uyG0TiZGXM36OXCa971JhUeu3ve97bwFGZU6nA1Kp5Lbf4/F4iIU8AhO5fT6xJiREkZiYMP52yTAmNlYaEx2z7NLJk7lFx47i4rEjUPmrZqxctXru91YB1I88DfQ7uZJlXyKR0uu/+dRiqRQcOAmdz0fnpXn6XC5nX8fIFApYbFbo2todtzs2TVhYjFoi+t+E5FTnlbLyF6oqqwxxXpGh+PK7//reAjB58uTshx56aOWDDz74nE6nM31bAJiQuZWYiYiMlGVmZGRNGpO9WSXCuK4unScsLEpkdHsPvvbGnx612uxOtUoNr9uF3p4eoTK+6+AJKFetXPlSa22NJFSrferqnj2vtLe2oq619bbmddstQOXJLVq0aFNOTs7473gd7Hb714QVC8j4MWNjnn34obOR3a2rU0y6pCkKX2poW02Su6Jkw4JZs/4YEhaGWK3WxaqnranRo4mIQCDRJMfz3ObHNs+Nj4+/Be3KUFl2PZmDr6G0rGxP+21O/I4DQBPgenq6QQhv/7bXSSQSypxbkLqDD6WfH+bOmvHrsr3/kadJfXDanahq6Ya+qxe8zQybxfzLP/35z8ckUvHSwuJCKBSKZadOnjz0523bXooIC42WiCWvP71ly4ktTz2Vt3TZsoiMjAxh7D9Zs3ZNVEhwemVtTf6HH3xw/QejQZfL1V5XW1cyb+7cvLa2ti8aGxtvaSBUKhWpK5FQBYMP5jcMLc2jkyU+BAQFQZOWCmlDM3buPQaT2YJOUy+OvrNtmorzIMLlhOF8ftzHVwvj2k2WmQtHD99QdeaEuuLUsbTJs+dNHLpokZP0xvYtW7ZsaqipjQvLyvSbMXe+fM/hYz+cDvjiiy/q33vvvfd/+9tXX/7i/PnfUwBuiQM9PT1OJq0ZG9z0QaTtg6Oi7Ib2OozQhMGrVKDbYAbn8yA+LBAzR2RCq1IgQCaFiaqHQx+LuNR+cHi8aocmELxYBH3lZemxYwekovDYR5YvWBju5ZDS2N5qqO3seOsHFUKspyOjotTlFeWu2traW+p0pVLJLViwIJ2Cg46ODstXZacmLl5x5OQJiC6Xw1tUipbODmRnZSA4PgkepR95khr4dXUhLsCPes7dxyhSDn4UDp6XC+eJVEqQFKxCja4HZodndX51HeLGjW+tbmiq/a/k8Lp16/DBBx/gdtYFRo0a7VarVTNJ5HSePXv26i0CIN26detO6n81ydnepqamE729vb7+Crjv/p+qHU53bmPRJV4doEbY6PGYtOanmLhkGUZOmoyokWNQbzChvaYGIQoJvD6vMC5SVvBQAvpvZKARGeAPrVoBKedDeYtOFZ+WOSNvxgx/Q0/PZQq+6zaZ7c6E0J///MYZh9Wqnz9//sOZWVnKmyguIoJ76qmnfqNWqxlAYeLEievo/kCFORwOVFVWxJrqq/jYKA0SZi/C6sefRtrw4ZDesL5RkZFY8ov/gVebjHaz7YaW4G7cMPCXBcRJOOEgwZVJ7ZQEL0qO7s9SSiS/jYyOTvtBWKA/ix16/X6L2Tz6/nXr5rEFDeb+SBvc9eijj76el5f3K3KB4uSkJJw4ftxMmRgQM/csXTais7pykZ++jQscng2jRIaz+flfbyM6Z9rEyWi3OsCkRP/02X2ebiIaAwNZ8g1CWzlIKwQRnuTEROHC5x9DyfN/yxoyNIU9RwkQbt+2wHJHXoCMDggIX1+zevWvCOQe37Zt23yr1coNzcpcFBkdo0pISBBWdkiaIiAwMGLTo48++OstW/7CylitUq1Cd2d0YFQ0nIFh2P7O/0FyfAIm5UwSJtcvoNgRFBUFCyeC0+MD04lU8fScDB63B+29VhgpCGIKIGeykoa0UzU4IBPxGBMVgYoO3fCRaWk7Y2JjNvzu1VfXeF0uftmKFc/1GAw9+q4uy1db/Y7NUExMjDwtPd1ZVVWVPX369Gw/4nfi7JvMD6sUqgQ/Yo4J9IF/GTV6tNra1RkrETmgHj4KDnqPydCNuXM3oD85g7PktNngpcn7qN85UV8JmDwu1NjdiJ44DbOn5wl029LQiKITR6Gjm5/bgUCqxsywAFxrqc/kVUE739j6QoDXYcPoBO3secufcNY0NT3x4ksvf0q6+78PAItgUlISR66PaQOEkXr7qgwetOY3/J577kkkdacZqglb5Th/Ah6OxyQCvIgIDXIm5nztfSaiz9KiQgSQOZJJqNRJP7BAlOutGLbuZ5g+Zz495oKM/ERYRCSGjBmDmIwsfPiHV+GhwIVSIuL85RB16wL8nWaqIjf8OD7q9IfvIXP2nBc1mvDPm5ub3f+1G2QCh01u6NChKCwsFNpisNztd4TV1dWg9hhOej7tQv4Za2ttJYIo8+1tHZQ9f0yfNl3Aj8HvM+i7cWj/AVSfPQNtcCApSp/A/a1mBzRj70IeTf6tbW9i5fIVqCGmEDJILTd5xixMWrIKrS4PbA4nAik4yaFB6HHYoQgMgohwQEl6o+mLs7HTJkx85P/JDptMJofRaGCrNoJOP3jw4IDsZVqBgA9FRUUC6jPKsjudd7ldLn9DWzOCVBSA+ipcLrhwkxU295rQRqrw8K5dOPvB3zGE+CXET0KV4REGqHO4MGzqVPrfi5NHj0HXrmPBHTiHg0p6+LBhCIyJR4fFBsJHlJGeCI6LQV7uBMREa2Aj/ODsFllkRPiKBQsWav+rFpBSZDdt2vQQ2V0F6/uxY8fijT+9Iej/0aNHC4uM9fX1uHL1CoKDg1mrMCPzZPzU3Gm1+z6HIikOakK097dtg7/cD2HhGtipR0k9ouRSAarzT2BiiBLxocFURX2VZbO7IKHPYhTJAHbEyBEIDQtHenr6l1mkCTNGio6OQWVNKRkSf4gZblisuF5eheZaCj6ZJpvNjpxxY7JHT546cs+e3Q0DAbjdJfHZs2eFUdaXEdoLi3VsklqtFm+/9TZyp+UKr2GZYcCYmJgoUNDlK1e4Q0cOj0slievxujAiLgqVF6/izd9uxeScyTQAHrV1VTA31iFHGwkDmaRzVA3DNaGQUrDcBG4ihR94iZQmyuFXTz4JtmzOgj7gM6gCPYRHUlKTPNtnoNaJ8lejtaML3Q43gohKJBQln0yNg8dOfLLn4KFDAxXAAIj1IkWXYwsU/TTRv1rcvzBJk45+4IH1H4WHhmaGh4cPWo2JQRTRlp1EiTY2TjgXYwQW1FryBOGU5T27d0ETGQIR8beazNDKsUNQ1dUJ97XzdH4Z+O5uqGUSXO3qwV8OniShAzy5IA8ZkWHwlyqA7l60kc0Npc9V3MCNAYlOLaSj52xmE1rrG6ASUaA8NFk6h8XmhCiUF4RWS2cnNOMmISFjiOGdv79nGwhAN334M888s3LDhg1bS0tLvSRdBefGIkwZ9FIvW2gynq6urgCNRpM+hMCvH7TMJhMqKysxNXeqAIZU7gI9MXbooXY4+vlnlDkxMjMyoWuqRDeVYIhMDhnvwYioSCGjZrdXyLgqOAhepwce4nNKI+pMNnRZmxBM44gg7Di7dyeSUtNIbiv6mIO1B6F+O/kOK43jWlkFqi4XYUR4ID1HusNPgc6GJuRX2qAJCUEs0e+E+QsLf/fa67+/SQewiVZUVHQSmBVRMNzMy7NeYROivvKLjIxcdO7cOcRo42AmdGfZZQDI8ODi+fNC348lKoqgHt2xc6ewtsey3m0wIkTKY92i6fjdP3ehpKMHpY0dGBkfCyVJXJebgJMokSeiTwkJQmlnD6QBKkzISIGMUCxARq+hNJZ16KENCoD5+hX8a9sbmHbPMgQEBMJGY+nUtaOzpRUXCy9h384dSJNLoKBWY1UsomTIqOIQHom7VqzA0Ozsgq3PP7/q6NGjNTetcxw/fpyt5d+y5xnH79q1awtRzrNmi1nm9XjR1tYGf7UKYaFhRGltGDlyJNP9NKgA1NfW4j+U9ThtPDNG+OBv26FV8JBTjzp7DPATSRCsViJZE0z97SF+9wlV4KCerRAHIPquqXDZLDAwJjl9AkZ6TyA9PycrGUFSEa7puklFhlNZh6OH0L6ttRl1tXUkMNuQShWUqtGAYi5UB1NY+VV1SJ0xBxs3P4biwkubli9f/sfB83v66af7MID1+a3W3zqpb1asWPHS9u3b053NznvH3zVeqIDDhw9jF2U7NS1VoLv+logn4Js6NVdwl7Ekh1OyhuLo3l1YmRSFCaOHostsQY/JTMjvhtJf1ieAaLicl8SKXIqskaMREhqK4KBAbKXP9p0+jllD0xEs46myiAo1QcQKdrTVl8FltUNDgCtX8hAnxBGryAnoIPQ+U45eCq6XKk1GVeEhfAoKIPt5C4v/nTRIlhahoaEmkr5oaGjArFmzcP/995NPl1L5dwmcX1FZgdmzZjP5K9ATCyYTKosXL6EIA+cO7kJaRDichC1yhRwmajFdV7cwWh8NnE3eYW1F/qcfQps5hASRHq6aSszOTIPGT0bv63O3jN8tPhfCA/2QEc0Yw4bSpnZYiDkYFfpuGEaWEGalHTRBGbEBtW7d5zt37maPs6A/8cQT60aNGpVN1fuf7wwAqw6iNZ71fGtrm6AEWXkHEMXZCYRSkpJRR9z/ySefCOrPz9+PBQwhBDwnT56AmCbYYPVg767jSHGx/XgOCspOKAGll+4bSO528l64/aXoPH8FDaQAwynTOVFhxN1yEll2YdCM+lotDhR1GCCnzMbKzUIGTTaHMHlvPzLecI/UVfAR/YVSG3d399QSOM987bXX/lFXX4ex48YOI0Y6cuzYsWrxnVhhBo4mU6+g/AwEcv3Iz7QAgSVYlTB5PG78OOGxasIENZX3IkrdVCNljwZsJqmaQPJ2KE2OMBB26jwLSVgrUVYHHKhpMqArqAO12h6ExkdCExZMSfAJy9/N+nbCm2yMSE/B+5/tQVlFLVLDQqn0RQId+jBQAsRkHkhlKtIIbly4cD6X6Hk6a8sxBNiU1N0bN25cM3nyZPNtSWFGiyzajIKuX7+Oy5cvUzCsAvCxwLDnmBLLysoCW7puJWQ+nX8GsdpYOM7kY3FXLyYEqhFPAklJNCehG0dB4Xw8FBSFUALHOIkc2RIFFkv8MMfggraoFg2HL6Agvxj1eiM4EkIyotTr18sRHxeBxXNnUEXYcK6qAWZiLpHoxlQ4wjTW3wSyFhJRxZeLQeaHZ6s/ubm5KC4uPrp+/fqfUKLMTLB9ZwWwfiaudzO9wFxZRXk5GQ4HDCRfkxKThBZhbMHolAUnJiaWAEeFHXv3wlVQiEWVrUgnje6l5zVkX9XUSgq2LyRU7M3enD0mpewlSknWchKkWp24dLUZtfVt6B6WgpjkOJRX1eNw/iVSmOVIDAiClQDubE0DJhC9qqV9KtBLHqKGRJU6OhrpqamIi4vFeKpKp9OFa9euVZLeMX6rF6D+5R782c+mqQMDV10puea5eu1aTlhYqCs8LJxjE2VWmDEE0/CnT59mBknE3sPoLykxhgZ3GQYCseSWNqqaAFyXi6GyehFKuj6cso4b6vIb12koLjJ6XbpUjlCxBIWE+IXnSlDX1onoIal4dfvH0KplSCacYdhQ0iJGcXMLJiTGC/zfbHXAHa2lSokn0FWQT8kmHPOH0cg2TTj+awsi/fKXJC1PPTKSPPzv6bHJZGuNy5Yua963d+8bRHtnSAlKWKlTS/ho8jbmDPVkYf9340P/PnLk+LgeCooUlYgL7ELupmFIDF5I+t8IPfG0/oIO1aTpgxrM0Pa6EMzWAZk+xw3e+rKDBx5hv0OpvyfIlFC5eBTU61BnsaOHI7GlDBOssJeymhoeBIfOA6PVBgMBZeiocaRFtOhsa4WX2pcBt0NYn5AjLS01PDs7m7t06ZKPtTZ34MABzJ8/H4SQ82wO+/Ixo7N/ciY//7ORQ4e2VNfUbHd6PHcR0PG7dux46/z58wOu6cUXX5oglSqG7zv0H+/iRbMes3Q0pGgUOiyYH4uwmMC+QDP68pLs9jLEF6PXxKG92IDmj8oQcbIVaR4xJDJRH3cLN9+gAHCE5H3/83QuB9HaZa8d5zxO/FvkhDtQhRlD0uEnPM8x241GwgT/jCGISs0k+m6Eh9SmjNopKCgYk3JyCEh5GIy9TPm+S0GpWLp06UmOqEB04MD+NYsWLSaKqL9w+tSpZ+mxw4wzly5Z8npCkHqTi1FfXMK/3v373zdHRWgC8vJmvNKtb5oi8hqDtBEmJKaqkRglQkgEGXmTkT7YS0BE0/C4BlBZmBZRHtUkaAwo+bgWzjevYKzFBz/Wu24BvwZ0fh+V+WDhfQLFBVBLWOjeFQK2o8Qse2VejB2VTpXgRxqCMk/U2EL1F0qGzG63CpiUSv1vJUt8990LEUtWma0m7927DyWlJZg/b75nyJAhj3JU6uMJ5P5+5syZq2+++eZGQvgONoiXX3nlFyqP+y/ZEf5oam5Ckd6BsdPy9CdPnRVdvFQYGBZswsKcEPx0bRa4yHjiM0p4VyN8TiNN3iVkhchLuA3ubfaLpwl7KRAFn9VD99wFTLPz8GfBcd8cAPbbRpNupwkHURUEkm+op6AWU2Z3+6ywpCdgBAFjbUsH2glrIpMSEULZZujOUbZtFJi7Fy4U1i3YQXNEWVkZY4Mzv/jFL+7Ly8trFa1du5bftGnTMWqBP7a3tw/s5mjjtHlBSnlefKAEPcT5+aU1eGd/gbJBpJXbA9Ng8EtDeYcfmutaEKc0IyhYCs5B6s7jFEqWu5F4QepyN9+oRMB5HIgapUE9YUr56UYk+8QQCfjEDQJHtkHGgRQDdFQiMhYEwgSTr4/zrzlsCIsIQ6/FDD48WthzZBdmSAg4G4lxkpOTBepjFr2kpARnz55FanLS2Wefe34lmaJGCoxbXFtb27hv377GrwLxzOnTGrp0za7aljbJwWu1KOS1iJi5ABL/IFJYYtIAcmHVZee1Anzx6kH8eo0Bd00IBe8S44YuG+DlW2w1C1KNJyE1eWUiPqaiO/NZHXKVfoPAkBsoG6YVwilAreQ0I2hySvo/iqohgVRgZ3ePgCGJKUmkICNRVl6Gjo5OgR1YAFg1sEUaxlajRo5of+XlV5YePHSovV/c8ezXra7Gun/9+o+vlVY8vONiteOKLAvROWsgDwmHm2RsMJu8z0m9bIY8JhOtCWvx4k4FSq9bwSlFwqS/xDWhBvr+9t8XdD39JRRWyl0YuyYdBRFitNkdA3LWN/BzIwiE+KxDGgQbLYaUZHSyh0CtywgTKUkxJYWtUFVWVKDXaEQEOUMmxxkWlNNjTLQRY/3r6PHj7be1KJqTk6Mgj59Y0NTGe4PSkZCixfjseIQFy+F2MC9uhIN0rIMmIQvSoEk9Cy/+24TWDhc48vJcv9NjZc/uE5iRiKD/pYKr6XuOY8vMSB4eAPXcJFwg7LAJup676acPEXg46Tw6lxOdBIQeelU0oY3KaIHN5WZqj8xaPSy9vYIMl1HZs8UZRvElJddA5sf0+Y4df2WLNTcFgA3iVlZ408Ob1vXwtscsw0wSve4zNF29Sn2uQkJCCJmLXrhIvnq4vgpnVlUWmYACzxRs+1cTbGYPq6+BKgAFxMPLoTNYaYpewT8MVAO9VC7xIHu2FmVqHm0UUCs3OPd9f8X0WADpBjtNqJfO4SWjI6NKCLe7CeyswkJMIGGAmDCFrVaziTMD19LaKtwnJ/vGyZMnK7+2N8jU3MMPPzzryKFD76anpgWwB5nn37ljZ8DphotQZIdBlNSM6qKPcLWggoBKATHp8gHJwt1Adq8DqtgRONCUhf0niUjErK3YwqUUze1uHDlqxKm9wBcXTPSw+GYVSFlNS5fBlx2CahI2rhsUOHhDlP1mAMgmzbHtIvrLFlT93UxueBEYEsouucN4Qnwb2WRm1MRUce0tLbCYLdWfff75R1QlX1v95Vl0CCiC2trbf3r3miXvTZ45Zdhzv34mZfbCmY+0eLsQSDo/PD0SnqAqlF++iIKrjTRA0Y0trZt3bXkxD3vEVPzjjBjNDWRgCJHZZAoKjAjHSIxMnExB9KKpjdJOAqV/05PkIlQBEmjHhhOXO9HlcsA0SBkKnoQt0JDDs3Neln8qOzfhkAdKekZO1XDx9CmBdJmoY5unzPbqSZl2kYehsm/454cf3vLyGZ4tXf/hD3/4uEuv33vqav6i5LwhhT1Oy2/PnT2rEUl58A4vjGQ4eI0PVnMNPGRnvb6+Vde+m+/GHj6bhwd+wRpUetKw67ROeIFY7EaIigwQydmeXj2MXW4UFXcRk0j6Kkh4H0sooXpmOFlhGTqpp400SR/fV10M/Mqp7ytcJGlZzxGe+Pi+K9HsRI/tzJvQbcqUqWSRy9llc8hII2AtKBAqITw8XPxNF24KGMA0cUe77uVxaWNc+S3F4sPygsUfVRzkXC02NO0vh73bBt5fDKe7FxyBCMdzXyae475Ue8IuLrVD+EjsviyhcxrBK2SEwCRgdE3QG3oRGhKG0msOGhjlVNS3593b64S52w6NNgCWSAVaKdNdFBWS/4Q1fZOvpKqwM9SgxzmKCE8M4CY6bCFN0UUYFpOQiHZdOwGzAw888AD5k43QU/aZcTMajZ7BW3g3BYCt/zNk3Hdg/8Wx6aOOKuo4WMQeqOfFQTEhHJIwuWCDPRKKOmcTAE9AZu4rPrZ/7YCqQBEYjobeGJwtMbML+aBWS2EmVeaiQKuVcthNYjQ0mYU2YIFzugnddVao/ST0XgkxAQ8rnaeOqq2Y+rlaQH2fsILM8cQkfJ9o6qFxFpHsyFuyFNNyp+AktUGAOkDY02CrUlOnTkVNbQ1cHnfU+vXrU7/xAgmmA8gnu198+aV7J8ePOtV9sBZKsqLKqABwGSq4/XkCJSfhmo2i7+mb8QDRD7r1L6MRFjiUUbhQTqlycVAEyYmqzPBTqqGgtlJKg5CfbyBBSOlliyMEip1dNhiJJSRyDl4KioHarJxaoZF6y9O/fuBjO8UeiFilURscs/UicMJ4LF+2jEo+w23uNbl7zb2orKoSmG38+PEYP24Cmhoa00kU3UuKkP/WK0RKy0r1CXHxn64dtQBVH1yCqNuNALE/ITyEXVqvxAk2HCZJxcLVoPj6TegDwg51GOo6nejuJHsaQtQU5kK3QU/ITD6AMtrU1IXqmk6BEaR0bqPZisvlbbC76b0in6AFPGx3irLO8+yqEKlwY7tL7DhlN6I5PQVL1t6LYKI9hUKxKyQ0dFdTUzNI0jPlZ9+/f38+JfekTqcrddjtm0eMHJH4nZfI/O6137+VFJfywtTIsWjYX4nuK+1CIMSevjVnqkABkb0+382ZH3TfQ+jFS/zRYVahq8dB3AxMypWjpvsKThVWwGDrQGqmHFW1nWhttAqTZnsOLrZhZSAn6cLA5TGDwAbs6w1sufuQTY9rQ1KwjPo8NiKSrULZL14s+IfH432vuLjYfppMj16vb33sscfuWr58WS75gNkGo/E6OcDfPPLIIwvZ2iDTCMJ3lb4aALbx8dSWp55fMfueF+anTIbhSgtsTSa4qk3w9LBscMJ6G/gbnTCYCW/ofjZ4likzubxemxsOow3BKh6rl0chNl2PhCwRAlVkY10+FJW04nJJM1xMUDlpkka7sCzmvcEuwt4Bu1yOzttLlfOp04CmaTlYtWkzMgnps7OzbTt2fH7f1q0v7Dl06NDesePGXTl08CCrCGlcXFwk2z4rKipq+vTTT+dPmzYtbsmSe96+fv362czMzDB2HcMtL5Njmx1Xrlw5uXj23b4Qr3/utWvFZC/9IHYmweciEeS2UeWKqNclfbZXcHFfmljmBl2mbigsVZiSTtqdaFRCFjhcqyKg42B1mCmITiFQLsIUtlbHk4JrqzCDO9WOEMEr9JUU43Z2XUCly4rj5EECFy/AigfWC2t9NLmdZOZeIDf7bzZRxmjpaWkN8dr4e+vr69Xr7lunpLntY2Ni30EiN/g38gZlpBS1n3zyyZ6MjAz7N14nyBRiYVHhqfvX3aeMD4zKKTlfAd4vkQaqhN3SC6fZCLe1lyjZKzgvEVNmrPdZqVL2LT3tiPbWYlSsmVrCJXB9t96K5hYzHE73DUtEOML3fUPMbifZuqce2ma7sHfIyl1M5dVD9vqkz46akZkY9+DPMHfxEjJQ8lPvv//+r7bS8de//vU6m3z/To/T6TQQ4sedP39+aHJKsob4/xS1hWCAurq62JpA1bvvvvsZBcQ+ffr0b18VZhufpWVl/37m6Wd+rgnUBB44dxV1plqIFVECfLDr+m1GPVWCFHJVMPUVOXeFP6G6HBJzO9KCzMIke4wudHTp4aE694o5gaYGupsYg5P5oeVoC4KvGaASvkcIYUm7lvOgSqtBQN40rF+8GJFR0V1RkZFnN27c+POPPvqo41Zjpn7vfvqZp+/fvHkzTxlfMWzYsHuUSmXx4CtK7uhK0fLy8taoqKjilatWzclIilEq7Dq019fDYDRTNRAyE5h4WRlTNdjM3XBYjDD3dCHYWYZ5Q3sgk7nIMTJU5wXhw/PcoGv96X6vD+1HdZAdaUaU1SssdlRxLlyPJQ+yZB6m/PKXWLZ6tYcMzx9379797IYNG3534cIFy7dd1NHR0eGpqqraPSQzMy02Lu6Xc+bMcVEwznw1CGyvgK0JYubMmd/55QTS2Bkr6Rg6JGtdY2OTdveBI7hwvR7dojDwAWGkaRSQiBQCBXqMjZibVIW8EYQnVMI+35cLHKxPGW7IZBK49W40fNQEnG+Gk9itVUZ0GB2OpAXzMGrWbMQmJHS0NDUdeXf79j/QBArZNch3chDaK99+++1/kB5QkB2e/9X3s93h2w6A4Gop4xMmTNQsXrz4aQrEQmKMuNPni1HZoIPObCEDowZns2NIuA4rpkugZrqD8bhY1H8dnXCJq8vuQWuLG1dPNUBSaYU8PBRcWjyyps/AuNzpKC29vtPn9ekPHzz41o4dO4pJxv7XX3AOCAjgSQuISRI7v1o1dxyAwcfjjz8+6je/efGfVRXl4Y2N9cGNrc1oaNahqbKcJtgNdYAXUr6v3+3ULh5SdQz13W4XJGoNVIEJNLhQxCfEQJue0aONiTXv3rPraZW/yvDSSy/tq66u9uAHPoTrA5gRutPJs+PVV18tOnz48CRCYOkTT1A0ho+ePXGcPJ2ZDn13D6G6gyjOJWyoGul/htRsbzEoKAhx8QnQdepOKeQyu5+/f8vW559/rlOnc14rKenAj3iwDROO7eO/9957uNOv0bNyYqDCMswWHhctWpRCfbaIJu6x223C83205Br4djhrIalMxvv7+VnpM7cTVzv7L6xkSVAolQI+/FjHlClT8H8FGADjk8Qr5h5T8wAAAABJRU5ErkJggg==" type="image/x-icon" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/hls.js@1"></script>
  <style>
    *,body {
      margin: 0;
      padding: 0;
    }

    body {
      font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
      font-size: 14px;
      line-height: 20px;
      background-color: royalblue;
      height: 100%;
      width: 100%;
    }

    header,
    footer {
      position: absolute;
      width: 80%;
      margin-left: auto;
      margin-right: auto;
      display: flex;
    }

    .logo {
      background-image:  url('data:image/jpeg;base64,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');
      background-repeat: no-repeat;
      -webkit-background-size: 100px 100px;
      background-size: 100px 100px;
      background-position: top center;
      text-align: center;
      font-size: 42px;
      padding: 99px 0 33px;
      font-weight: normal;
      text-shadow: 0 1px 2px #ddd;
    }

    header {
      padding: 11px 0;
      top: 0;
      left: 66px;
      z-index: 3;
    }

    .description {
      position: absolute;
      right: 0;
      text-align: center;
      font-size: 16px;
    }

    footer {
      z-index: 2;
      bottom: 0;
      line-height: 1.8;
      text-align: center;
      padding: 11px 0;
      color: #999;
    }

    a {
      color: #444;
      text-decoration: none;
    }

    .backdrop {
      position: absolute;
      width: 100%;
      height: 100%;
      box-shadow: inset 0 0 100px #ddd;
      z-index: -1;
      top: 0;
      left: 0;
    }
     .video-js {
       position: absolute;
       top:0;
       left:0;
       width: 100vw;
       height: 100vh;
       background-color: black;
     }
  </style>
</head>

<body>
<script>
  $( document ).ready(function() {
    console.log( "ready!" );
    $('header').delay(3333).fadeOut(333);
    let enabled = true;
    $('body').mousemove(function () {
      if (enabled) {
        enabled = false;
        $('header').fadeIn(123).delay(3333).fadeOut(333);
        setTimeout(() => {
          enabled = true;
        }, 3333);
      }
    });
  });
</script>
  <header>
    <h1 class="logo">Bienvenidos a Stream Player</h1>
    <div class="description">
      Stream Player es la entrada de Nino Bozzi a ZappingTV.
      Es un player HLS con conexión a un servidor Rust.
      Todo dockerizado.
    </div>
  </header>
  <div class="container">
    <div class="row">
      <div class="col">
        <video id="video" class="video-js" controls></video>
        <script>
          let video = document.getElementById('video');
          if (Hls.isSupported()) {
            let hls = new Hls({
              debug: false,
            });
            hls.loadSource({{.StreamSource}});
            hls.attachMedia(video);
            hls.on(Hls.Events.MEDIA_ATTACHED, function () {
              video.muted = true;
              video.play();
            });
          }
          else if (video.canPlayType('application/vnd.apple.mpegurl')) {
            video.src = {{.StreamSource}};
            video.addEventListener('canplay', function () {
              video.play();
            });
          }
        </script>
      </div>
    </div>
  </div>
  <div class="backdrop"></div>
</body>
</html>