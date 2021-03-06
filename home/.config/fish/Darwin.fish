alias ll='ls -lahF'
alias la='ls -a'

if test -d ~/.rbenv/shims
	set -x PATH ~/.rbenv/shims $PATH
end

if /usr/libexec/java_home > /dev/null
  set -x JAVA_HOME (echo (command /usr/libexec/java_home))
end

if test -d /usr/local/share/android-sdk
  set -x ANDROID_HOME /usr/local/share/android-sdk
  set -x ANDROID_HVPROTO ddm
  set -x ANDROID_ROOT_SDK $ANDROID_HOME
  set -x PATH $PATH $ANDROID_HOME/platform-tools
  set -x PATH $PATH $ANDROID_HOME/tools
end

if test -d /usr/local/opt/groovy/libexec
  set -x GROOVY_HOME /usr/local/opt/groovy/libexec
end

if test -d /usr/local/opt/go
  set -x GOPATH ~/.go
  set -x PATH $GOPATH/bin $PATH
  set -x PATH /usr/local/opt/go/libexec/bin $PATH
end

