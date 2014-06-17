.class Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;
.super Ljava/lang/Object;


# instance fields
.field public char4PinyinPos:I

.field public pinyinPos:I

.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

.field public wordPos:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;III)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->this$0:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->wordPos:I

    iput p3, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->pinyinPos:I

    iput p4, p0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson$MatchInfo;->char4PinyinPos:I

    return-void
.end method
