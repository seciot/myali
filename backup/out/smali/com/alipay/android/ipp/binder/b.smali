.class final Lcom/alipay/android/ipp/binder/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/alipay/android/ipp/binder/IppService;


# direct methods
.method private constructor <init>(Lcom/alipay/android/ipp/binder/IppService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/ipp/binder/b;->a:Lcom/alipay/android/ipp/binder/IppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/ipp/binder/IppService;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/ipp/binder/b;-><init>(Lcom/alipay/android/ipp/binder/IppService;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/ipp/binder/b;->a:Lcom/alipay/android/ipp/binder/IppService;

    invoke-static {v0}, Lcom/alipay/android/ipp/binder/IppService;->access$0(Lcom/alipay/android/ipp/binder/IppService;)V

    return-void
.end method
