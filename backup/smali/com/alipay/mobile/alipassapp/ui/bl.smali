.class final Lcom/alipay/mobile/alipassapp/ui/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/bl;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;

    iput p2, p0, Lcom/alipay/mobile/alipassapp/ui/bl;->a:I

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/bl;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/bl;->c:Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;

    iget v1, p0, Lcom/alipay/mobile/alipassapp/ui/bl;->a:I

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/bl;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;ILjava/lang/String;)V

    return-void
.end method
