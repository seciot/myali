.class final Lcom/alipay/android/ipp/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/alipay/android/ipp/IppFacade;


# direct methods
.method private constructor <init>(Lcom/alipay/android/ipp/IppFacade;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/ipp/c;->a:Lcom/alipay/android/ipp/IppFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/ipp/IppFacade;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/ipp/c;-><init>(Lcom/alipay/android/ipp/IppFacade;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/ipp/c;->a:Lcom/alipay/android/ipp/IppFacade;

    invoke-static {v0}, Lcom/alipay/android/ipp/IppFacade;->access$7(Lcom/alipay/android/ipp/IppFacade;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
