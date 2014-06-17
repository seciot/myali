.class public final Lcom/alipay/mobile/about/receiver/ClientStartupReceiver_;
.super Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver_;->a:Landroid/content/Context;

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/about/receiver/ClientStartupReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
