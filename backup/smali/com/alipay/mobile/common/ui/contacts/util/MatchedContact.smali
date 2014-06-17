.class public Lcom/alipay/mobile/common/ui/contacts/util/MatchedContact;
.super Ljava/lang/Object;


# instance fields
.field public isBind:Z

.field public isNumberMatch:Z

.field public matchedEndIndex:I

.field public matchedStartIndex:I

.field public matchedWord:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public phoneNum:Ljava/lang/String;

.field public searchedWord:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/MatchedContact;->matchedWord:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/common/ui/contacts/util/MatchedContact;->matchedStartIndex:I

    iput v1, p0, Lcom/alipay/mobile/common/ui/contacts/util/MatchedContact;->matchedEndIndex:I

    return-void
.end method


# virtual methods
.method public setMatchedIndex(I)V
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/MatchedContact;->matchedStartIndex:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/MatchedContact;->matchedEndIndex:I

    if-nez v0, :cond_1

    iput p1, p0, Lcom/alipay/mobile/common/ui/contacts/util/MatchedContact;->matchedStartIndex:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/MatchedContact;->matchedEndIndex:I

    if-ge v0, p1, :cond_0

    iput p1, p0, Lcom/alipay/mobile/common/ui/contacts/util/MatchedContact;->matchedEndIndex:I

    goto :goto_0
.end method
