.class final Lcom/alipay/android/mini/window/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/alipay/android/mini/window/MiniWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/MiniWindowManager;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/ab;->b:Lcom/alipay/android/mini/window/MiniWindowManager;

    iput-object p2, p0, Lcom/alipay/android/mini/window/ab;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/android/mini/window/ab;->b:Lcom/alipay/android/mini/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWindowManager;->a(Lcom/alipay/android/mini/window/MiniWindowManager;)Lcom/alipay/android/mini/window/IFormShower;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/mini/window/ab;->a:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/alipay/android/mini/event/ActionType;

    const/4 v5, 0x0

    sget-object v6, Lcom/alipay/android/mini/event/ActionType;->b:Lcom/alipay/android/mini/event/ActionType;

    aput-object v6, v4, v5

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/mini/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;)V

    return-void
.end method
