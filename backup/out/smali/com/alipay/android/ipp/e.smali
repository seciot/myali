.class final Lcom/alipay/android/ipp/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/alipay/android/ipp/IppFacade;


# direct methods
.method public constructor <init>(Lcom/alipay/android/ipp/IppFacade;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/ipp/e;->b:Lcom/alipay/android/ipp/IppFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/android/ipp/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/ipp/e;->b:Lcom/alipay/android/ipp/IppFacade;

    iget-object v1, p0, Lcom/alipay/android/ipp/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/ipp/IppFacade;->access$8(Lcom/alipay/android/ipp/IppFacade;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
