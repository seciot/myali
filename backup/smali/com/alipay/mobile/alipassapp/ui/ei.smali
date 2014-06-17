.class final Lcom/alipay/mobile/alipassapp/ui/ei;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ei;->b:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;

    iput-boolean p2, p0, Lcom/alipay/mobile/alipassapp/ui/ei;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ei;->b:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;

    iget-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/ei;->a:Z

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;Z)V

    return-void
.end method
