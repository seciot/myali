.class public final Lcom/alipay/mobile/alipassapp/biz/model/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/Exception;

.field public f:I

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/a;->b:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/a;->c:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/a;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/a;->f:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/a;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/a;->b:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/a;->c:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/a;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/a;->f:I

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/a;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    iput p2, p0, Lcom/alipay/mobile/alipassapp/biz/model/a;->f:I

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/a;->g:J

    return-void
.end method
