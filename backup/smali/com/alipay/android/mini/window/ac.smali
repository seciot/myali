.class final Lcom/alipay/android/mini/window/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/MiniWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/MiniWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/ac;->a:Lcom/alipay/android/mini/window/MiniWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$string;->h:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/alipay/android/app/R$string;->i:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v1, Lcom/alipay/android/app/R$string;->b:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/android/mini/window/ac;->a:Lcom/alipay/android/mini/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWindowManager;->a(Lcom/alipay/android/mini/window/MiniWindowManager;)Lcom/alipay/android/mini/window/IFormShower;

    move-result-object v0

    const/4 v1, 0x0

    new-array v4, v7, [Lcom/alipay/android/mini/event/ActionType;

    sget-object v6, Lcom/alipay/android/mini/event/ActionType;->b:Lcom/alipay/android/mini/event/ActionType;

    aput-object v6, v4, v8

    new-array v6, v7, [Lcom/alipay/android/mini/event/ActionType;

    sget-object v7, Lcom/alipay/android/mini/event/ActionType;->i:Lcom/alipay/android/mini/event/ActionType;

    aput-object v7, v6, v8

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/mini/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;)V

    return-void
.end method
