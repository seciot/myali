.class Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;
.super Ljava/lang/Object;


# instance fields
.field farthers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;",
            ">;"
        }
    .end annotation
.end field

.field isFirstChar:Ljava/lang/Boolean;

.field matchInfo:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

.field priority:I

.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->this$0:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->priority:I

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->matchInfo:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;

    iput-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->farthers:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;->isFirstChar:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$SearchChain;-><init>(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;)V

    return-void
.end method
