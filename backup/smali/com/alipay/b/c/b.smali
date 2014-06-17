.class public final Lcom/alipay/b/c/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/alipay/b/c/a;


# direct methods
.method protected constructor <init>(Lcom/alipay/b/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/b/c/b;->a:Lcom/alipay/b/c/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/b/c/b;->a:Lcom/alipay/b/c/a;

    iput-boolean v1, v0, Lcom/alipay/b/c/a;->a:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "\u68c0\u6d4b\u8033\u673a\u88ab\u62d4\u51fa"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/b/c/b;->a:Lcom/alipay/b/c/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/b/c/a;->a:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "\u68c0\u6d4b\u8033\u673a\u88ab\u63d2\u5165"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
