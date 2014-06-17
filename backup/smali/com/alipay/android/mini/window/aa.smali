.class final Lcom/alipay/android/mini/window/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/alipay/android/mini/window/MiniWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/MiniWindowManager;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/aa;->b:Lcom/alipay/android/mini/window/MiniWindowManager;

    iput-object p2, p0, Lcom/alipay/android/mini/window/aa;->a:Ljava/lang/Exception;

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

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/android/mini/window/aa;->a:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/alipay/android/app/exception/FailOperatingException;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/window/aa;->a:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/mini/window/aa;->a:Ljava/lang/Exception;

    instance-of v2, v2, Lcom/alipay/android/app/exception/AppErrorException;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/aa;->a:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    sget-boolean v4, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    sget v0, Lcom/alipay/android/app/R$string;->d:I

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const v0, 0x104000a

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/android/mini/window/aa;->b:Lcom/alipay/android/mini/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWindowManager;->a(Lcom/alipay/android/mini/window/MiniWindowManager;)Lcom/alipay/android/mini/window/IFormShower;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/alipay/android/mini/event/ActionType;

    const/4 v5, 0x0

    sget-object v6, Lcom/alipay/android/mini/event/ActionType;->d:Lcom/alipay/android/mini/event/ActionType;

    aput-object v6, v4, v5

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/mini/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;)V

    return-void

    :cond_1
    if-eqz v2, :cond_2

    sget v0, Lcom/alipay/android/app/R$string;->a:I

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
