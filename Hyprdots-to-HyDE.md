# Hi! 👋 Khing here.

## This fork will enhance and fix prasanthrangan/hyprdots over time.

### Why?

- Tittu (the original creator) is AFK for now, and I'm the only collaborator left. ⁉️
- My permissions are limited, so I can only merge PRs. If something breaks, I have to wait for help. 😭
- I won’t change everything in his dotfiles out of respect.
- This repo won't **overwrite** $USER's dotfiles.

**This fork is temporary and will bridge the old structure to a newer one [coming soon...].**

### Who are the $USER?

> **NOTE**: If you're confused why every `install.sh -r` overwrites your configs, you should fork [prasanthrangan/hyprdots](https://github.com/prasanthrangan/hyprdots), edit the `*.lst` file, and run the script. That’s the intended way.

Who are the $USER?

✅ Don’t want to maintain a fork
✅ Want to stay updated with this great dotfile
✅ Don’t know how the repo works
✅ Don’t have time to create your own dotfiles, just use this as inspiration
✅ Want a cleaner `~/.config` with everything structured like a real Linux package
✅ Demands a DE like experience

### ROADMAP 🛣️📍

- [ ] **Portable**

  - [ ] HyDE-specific files should be imported into $USER, not the other way around
  - [ ] Keep it minimal
  - [ ] Make it packageable
  - [ ] Follow XDG specs
  - [ ] Add Makefile

- [ ] **Extensible**

  - [ ] Add HyDE extension system
  - [ ] Predictable installation

- [ ] **Performance**

  - [ ] Optimize scripts for speed and efficiency
  - [ ] Make a single CLI to manage all the core script

- [ ] **Manageable**
  - [ ] Fix scripts (shellcheck compatible)
  - [ ] Move scripts to `./lib/hyde`
  - [ ] Make `wallbash*.sh` scripts monolithic, to fix wallbash issues
- [ ] **Better Abstraction**
  - [ ] Waybar
  - [x] Hyprlock
  - [ ] ...
- [ ] Clean up
- [ ] **...**

---

Here's how we can update HyDE-specific Hyprland settings without changing user preferences. We don't need the "userprefs" file. Instead, we can source HyDE's hyprland.conf and make $USER prefered changes directly in the config. With this approach, won't potentially break hyde and hyde won't break your own dots.

![Hyprland structure](https://github.com/user-attachments/assets/91b35c2e-0003-458f-ab58-18fc29541268)

# Why name it HyDE?

As the last man standing collaborator, I don't know what the original creator intended. But I think it's a good name. I just don't know what it stands for. 🤷‍♂️

Here are some of my speculations:

- **Hy**prdots **D**otfiles **E**nhanced - Enhanced version of hyprdots when @prasanthrangan introduced wallbash as our main theme management engine.
- **Hy**prland **D**otfiles **E**xtended - Extensible Dotfiles for Hyprland.

Feel free to suggest your own meaning of HyDE. 🤔
