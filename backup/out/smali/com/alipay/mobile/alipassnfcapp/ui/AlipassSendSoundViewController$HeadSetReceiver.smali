.class public Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController$HeadSetReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController$HeadSetReceiver;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController$HeadSetReceiver;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #setter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->misHeadSetOn:Z
    invoke-static {v0, v2}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$1102(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController$HeadSetReceiver;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #calls: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->upDateNotice()V
    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$1200(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController$HeadSetReceiver;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    const/4 v1, 0x1

    #setter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->misHeadSetOn:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$1102(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;Z)Z

    goto :goto_0
.end method
