<h2 align="center">
<img src=".github/assets/logo.png" style="vertical-align: bottom">

[![Download](https://img.shields.io/github/downloads/ImaterialC/PriconneRe-TL/total.svg?color=brightgreen&label=download&style=flat)](https://github.com/ImaterialC/PriconneRe-TL/releases/latest "Download") [![Discord](https://img.shields.io/discord/967648014497890325?color=blue&labelColor=555555&label=discord&logo=discord&style=flat)](https://discord.gg/vZjAy67KpB "Discord") [![BepInEx](https://img.shields.io/badge/-BepInEx-yellow.svg?logo=unity&labelColor=555555&style=flat)](https://github.com/BepInEx/BepInEx "BepInEx") [![AutoTranslator](https://img.shields.io/badge/-AutoTranslator-orange.svg?logo=unity&labelColor=555555&style=flat)](https://github.com/bbepis/XUnity.AutoTranslator "AutoTranslator") [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Donate](https://img.shields.io/badge/_-donate-red.svg?logo=githubsponsors&labelColor=555555&style=flat)](#-donation "Donate")

<i>Un patch en français pour Princess Connect! ReDive serveur JP</i>
</h2>

---

⚠️ **Attention:** _A vos risques et périls !!  Nous ne sommes pas responsable de toute utilisation concernant votre compte en utilisant ce fork_

Priconne Re: TL FR est un patch d'interface non-officiel en français pour [Cygames' Princess Connect Re: Dive JP](https://dmg.priconne-redive.jp/). Ce projet se concentre principalement sur la localisation d'interface du jeu afin de faciliter les joueurs ne conprennant pas le japonais en français.

_Toute aide et contributions sont les bienvenues !_

---

## ![Tantei](https://static.wikia.nocookie.net/princess-connect/images/f/fb/Kasumi_Box_Icon.png/revision/latest/scale-to-width-down/40?cb=20190925082622) Table des matières
- [ Table des matières](#-table-des-matieres)
- [ INSTALLATION](#-installation)
- [ MISE A JOUR](#-mise-a-jour)
- [ DESINSTALLATION](#-desinstallation)
- [ PARAMETRES, OPTIONS, ET FONCTIONNALITES](#-parametres-options-et-fonctionnalites)
- [ DONATION](#-donation)


## ![Nozomi](https://static.wikia.nocookie.net/princess-connect/images/4/46/Nozomi_Box_Icon.png/revision/latest/scale-to-width-down/40?cb=20190925084658) INSTALLATION

1. Assurez-vous avoir installé en avance [PriconneR](https://dmg.priconne-redive.jp/) depuis le launcher DMM Game. Ne fonctionne pas sur les émulateurs Android ;
2. Téléchargez la dernière version du patch [latest release](https://github.com/ImaterialC/PriconneRe-TL/releases/latest "Releases") ;
3. Placez tous les fichiers dans votre ficher zip dans votre dossier `priconner` ;
4. Assurez-vous que votre dosser `priconner` ressemble à l'image ci-dessous :

![Patched](https://github.com/ImaterialC/PriconneRe-TL/assets/105358849/f9ef7290-1ed4-41d4-b55e-616cb3d84636)

_La première lancement du jeu va freeze pendant quelques minutes, les lancements suivantes vont fonctionner comme d'habitude._

## ![Shiori](https://static.wikia.nocookie.net/princess-connect/images/7/77/Shiori_Box_Icon.png/revision/latest/scale-to-width-down/40?cb=20190925113434) MISE A JOUR

Il est vivement reccommandé de supprimer tous les fichiers du précédent patch.

Supprimez l'ancienne version de votre dossier `BepInEx` et placez la nouvelle version dans votre dossier.

## ![Maho](https://static.wikia.nocookie.net/princess-connect/images/a/a7/Maho_Box_Icon.png/revision/latest/scale-to-width-down/40?cb=20190925080932) DESINSTALLATION

Simply delete patch files that were extracted to the `priconner` folder
No Priconne files that were modified or damaged while installing this patch so you can simply delete them manually. Your game will turn back to a vanilla state.

Les fichiers qui doivent être supprimé sont :
```
BepInEx
dotnet
changelog.txt
doorstop_config.ini
winhttp.dll
.doorstop_version
```
also 1 folder at AppData\Roaming\
```%appdata%\BepInEx``` 

La version Vanilla du dosser `priconner` ressemble à l'image ci dessous :
![Vanila state](https://github.com/ImaterialC/PriconneRe-TL/assets/105358849/3d5823e6-5f67-42be-aaa7-dd2c452535a5)

## ![Kyouka](https://static.wikia.nocookie.net/princess-connect/images/3/39/Kyouka_Box_Icon.png/revision/latest/scale-to-width-down/40?cb=20190925113712) PARAMETRES, OPTIONS, ET FONCTIONNALITES

- Using [A fork of BepInEx Bleeding Edge](https://github.com/krulci/BepInEx) as the framework to inject [Kevga/XUnity.AutoTranslator](https://github.com/Kevga/XUnity.AutoTranslator) plugin.
- You can find their config here:
  - [BepInEx Config](https://docs.bepinex.dev/articles/user_guide/configuration.html)
  - [AutoTranslator Config](https://github.com/bbepis/XUnity.AutoTranslator#configuration)
- [krulci/BepInEx.FullScreenizer](https://github.com/krulci/FullScreenizer). You can press F4 to toggle fullscreen
- 16:9 aspect ratio and can maximize or adjust client sizes larger than 720p for a better experience on the modern monitor resolution.
- 2 strategies on textures based on size for Atlases and Name for others else, it will auto revert when textures are changed and unusable. **Unfortunately, AMD GPU users will need to replace atlas textures manually due to different compressing sizes.**

## ![Saren](https://static.wikia.nocookie.net/princess-connect/images/b/b3/Saren_Box_Icon.png/revision/latest/scale-to-width-down/40?cb=20190925084518) DONATION

Chaque don permet au développeur d'origine de ce projet de maintenir et de continuer le support de ce projet. N'hésitez pas à le soutenir ![KokkoroThumpUp](https://cdn.discordapp.com/emojis/974959962814021683.webp?size=32)

Votre nom sera crédité chaque mois dans la [chaine Youtube du développeur.](https://www.youtube.com/playlist?list=PL7rvyKiF8qfl4WgOAcSOuYnkg4fEbL66c)

[![ko-fi](https://img.shields.io/badge/_-kofi-red.svg?logo=kofi&labelColor=555555&style=for-the-badge)](https://ko-fi.com/E1E5HG8RP  "ko-fi: PayPal or Stripe direct or subscribe plan") [![saweria](https://img.shields.io/badge/_-Saweria.co-red.svg?logo=githubsponsors&labelColor=555555&style=for-the-badge)](https://saweria.co/imaterial "Local IDR currency support") [![patreon](https://img.shields.io/badge/_-Patreon-red.svg?logo=patreon&labelColor=555555&style=for-the-badge)](https://patreon.com/imaterial "patreon")[![PayPal](https://img.shields.io/badge/_-PayPal-red.svg?logo=PayPal&labelColor=555555&style=for-the-badge)](https://payPal.me/CorneliaCrimson "no deductions, messages go to my smartphone's notifications")
