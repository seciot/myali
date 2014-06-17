.class final Lcom/alipay/android/app/display/windows/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/alipay/android/app/display/windows/MspWindow;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/windows/MspWindow;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/windows/b;->b:Lcom/alipay/android/app/display/windows/MspWindow;

    iput-object p2, p0, Lcom/alipay/android/app/display/windows/b;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$string;->l:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/b;->b:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-static {v1}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/script/IWindowScriptable;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/display/windows/b;->a:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/android/app/script/IWindowScriptable;->alert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
