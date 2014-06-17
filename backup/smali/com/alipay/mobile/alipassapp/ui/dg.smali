.class final Lcom/alipay/mobile/alipassapp/ui/dg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/dg;->c:Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/dg;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/mobile/alipassapp/ui/dg;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dg;->c:Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dg;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/dg;->b:Z

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;->a(Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity_;Ljava/lang/String;Z)V

    return-void
.end method
