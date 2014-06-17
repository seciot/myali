.class final Lcom/alipay/android/phone/home/manager/c;
.super Ljava/lang/Thread;
.source "AppCenterOnItemLongClickListener.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field final synthetic b:Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/c;->b:Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/c;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->b:Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/c;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;->b(Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 96
    return-void
.end method
