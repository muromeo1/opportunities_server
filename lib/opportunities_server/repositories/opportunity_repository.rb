class OpportunityRepository < Hanami::Repository
  def by_company_id(company_id:, per_page: 10, page: 1)
    opportunities
      .where(company_id: company_id)
      .offset(page.to_i * per_page)
      .limit(per_page)
  end
end
