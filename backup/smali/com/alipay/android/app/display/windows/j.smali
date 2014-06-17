.class final Lcom/alipay/android/app/display/windows/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/windows/i;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/windows/i;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/windows/j;->a:Lcom/alipay/android/app/display/windows/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$string;->o:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v1, Lcom/alipay/android/app/R$string;->u:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "must"

    iget-object v2, p0, Lcom/alipay/android/app/display/windows/j;->a:Lcom/alipay/android/app/display/windows/i;

    invoke-static {v2}, Lcom/alipay/android/app/display/windows/i;->a(Lcom/alipay/android/app/display/windows/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->s:Lcom/alipay/android/app/display/event/EventType;

    invoke-virtual {v1}, Lcom/alipay/android/app/display/event/EventType;->a()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/high16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/j;->a:Lcom/alipay/android/app/display/windows/i;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/i;->b(Lcom/alipay/android/app/display/windows/i;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/j;->a:Lcom/alipay/android/app/display/windows/i;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/i;->b(Lcom/alipay/android/app/display/windows/i;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/j;->a:Lcom/alipay/android/app/display/windows/i;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/i;->b(Lcom/alipay/android/app/display/windows/i;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IWindowScriptable;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->q:Lcom/alipay/android/app/display/event/EventType;

    invoke-virtual {v1}, Lcom/alipay/android/app/display/event/EventType;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alipay/android/app/script/IWindowScriptable;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->t:Lcom/alipay/android/app/display/event/EventType;

    invoke-virtual {v1}, Lcom/alipay/android/app/display/event/EventType;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
